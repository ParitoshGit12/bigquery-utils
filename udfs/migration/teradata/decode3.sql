/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
CREATE OR REPLACE  FUNCTION td.decode3(exp  ANY TYPE, s1  ANY TYPE, r1  ANY TYPE, s2  ANY TYPE, r2  ANY TYPE, s3  ANY TYPE, r3  ANY TYPE, def  ANY TYPE) AS 
((
  case 
  when exp = s1 then r1
  when exp is NULL and s1 is NULL then r1
  when exp = s2 then r2
  when exp is NULL and s2 is NULL then r2
  when exp = s3 then r3
  when exp is NULL and s3 is NULL then r3
  else def
  end 
))